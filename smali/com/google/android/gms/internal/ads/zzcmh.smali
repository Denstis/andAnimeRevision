###### Class com.google.android.gms.internal.ads.zzcmh (com.google.android.gms.internal.ads.zzcmh)
.class final Lcom/google/android/gms/internal/ads/zzcmh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Lcom/google/android/gms/internal/ads/zzbio;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgck:Lcom/google/android/gms/internal/ads/zzbjn;

.field private final synthetic zzgcl:Lcom/google/android/gms/internal/ads/zzcme;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcme;Lcom/google/android/gms/internal/ads/zzbjn;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgck:Lcom/google/android/gms/internal/ads/zzbjn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbio;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcme;->zza(Lcom/google/android/gms/internal/ads/zzcme;Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcme;->zza(Lcom/google/android/gms/internal/ads/zzcme;)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcme;->zza(Lcom/google/android/gms/internal/ads/zzcme;)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbkk;->destroy()V

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcme;->zza(Lcom/google/android/gms/internal/ads/zzcme;Lcom/google/android/gms/internal/ads/zzbio;)Lcom/google/android/gms/internal/ads/zzbio;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcme;->zzb(Lcom/google/android/gms/internal/ads/zzcme;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcme;->zzb(Lcom/google/android/gms/internal/ads/zzcme;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbio;->zzaeu()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkk;->zzafa()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcme;->zzc(Lcom/google/android/gms/internal/ads/zzcme;)Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbio;->zzaez()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzdd(I)V

    monitor-exit v0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcme;->zza(Lcom/google/android/gms/internal/ads/zzcme;Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgck:Lcom/google/android/gms/internal/ads/zzbjn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjn;->zzacb()Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzccu;->zzd(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbmz;->onAdFailedToLoad(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zzgcl:Lcom/google/android/gms/internal/ads/zzcme;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcme;->zzc(Lcom/google/android/gms/internal/ads/zzcme;)Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbou;->zzdd(I)V

    const-string v1, "BannerAdManagerShim.onFailure"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcwj;->zzc(Ljava/lang/Throwable;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method
