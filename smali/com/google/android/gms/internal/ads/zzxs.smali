###### Class com.google.android.gms.internal.ads.zzxs (com.google.android.gms.internal.ads.zzxs)
.class public final Lcom/google/android/gms/internal/ads/zzxs;
.super Lcom/google/android/gms/internal/ads/zzwa;
.source ""


# instance fields
.field private zzcfh:Lcom/google/android/gms/internal/ads/zzafu;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwa;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVersionString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public final initialize()V
    .registers 3

    const-string v0, "The initialization is not processed because MobileAdsSettingsManager is not created successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawy;->zzzb:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzxv;-><init>(Lcom/google/android/gms/internal/ads/zzxs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAppMuted(Z)V
    .registers 2

    return-void
.end method

.method public final setAppVolume(F)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafu;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzcfh:Lcom/google/android/gms/internal/ads/zzafu;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzajx;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyd;)V
    .registers 2

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    return-void
.end method

.method public final zzby(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzbz(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final zzos()F
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final zzot()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzou()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzafr;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method final synthetic zzpj()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzcfh:Lcom/google/android/gms/internal/ads/zzafu;

    if-eqz v0, :cond_10

    :try_start_4
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzafu;->zzc(Ljava/util/List;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not notify onComplete event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzxv (com.google.android.gms.internal.ads.zzxv)
.class final synthetic Lcom/google/android/gms/internal/ads/zzxv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcfj:Lcom/google/android/gms/internal/ads/zzxs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzxs;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzcfj:Lcom/google/android/gms/internal/ads/zzxs;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzcfj:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxs;->zzpj()V

    return-void
.end method
