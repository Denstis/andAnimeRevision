###### Class com.google.android.gms.internal.ads.zzcvl (com.google.android.gms.internal.ads.zzcvl)
.class public final Lcom/google/android/gms/internal/ads/zzcvl;
.super Lcom/google/android/gms/internal/ads/zzaqe;
.source ""


# instance fields
.field private final zzfgu:Lcom/google/android/gms/internal/ads/zzcwc;

.field private zzgcq:Z

.field private final zzgij:Lcom/google/android/gms/internal/ads/zzcvb;

.field private final zzgik:Lcom/google/android/gms/internal/ads/zzcui;

.field private zzgil:Lcom/google/android/gms/internal/ads/zzbyz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvb;Lcom/google/android/gms/internal/ads/zzcui;Lcom/google/android/gms/internal/ads/zzcwc;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqe;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgcq:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgij:Lcom/google/android/gms/internal/ads/zzcvb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzfgu:Lcom/google/android/gms/internal/ads/zzcwc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcvl;)Lcom/google/android/gms/internal/ads/zzbyz;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcvl;Lcom/google/android/gms/internal/ads/zzbyz;)Lcom/google/android/gms/internal/ads/zzbyz;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    return-object p1
.end method

.method private final declared-synchronized zzali()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyz;->isClosed()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    goto :goto_16

    :goto_15
    throw v0

    :goto_16
    goto :goto_15
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcvl;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    const-string v0, "getAdMetadata can only be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyz;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkk;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isLoaded()Z
    .registers 2

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcvl;->zzali()Z

    move-result v0

    return v0
.end method

.method public final pause()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcvl;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final resume()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcvl;->zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final setAppPackageName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized setCustomData(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzckm:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_20

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    const-string v0, "#008 Must be called on the main UI thread.: setCustomData"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzfgu:Lcom/google/android/gms/internal/ads/zzcwc;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzcwc;->zzdoa:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setImmersiveMode(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgcq:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setUserId(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "setUserId must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzfgu:Lcom/google/android/gms/internal/ads/zzcwc;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzcwc;->zzdnz:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized show()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcvl;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzapz;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread.: setRewardedAdSkuListener"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcui;->zzb(Lcom/google/android/gms/internal/ads/zzapz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqi;)V
    .registers 3

    const-string v0, "setRewardedVideoAdListener can only be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcui;->zzb(Lcom/google/android/gms/internal/ads/zzaqi;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaqo;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaqo;->zzbqy:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzc;->zzck(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_42

    if-eqz v0, :cond_10

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcvl;->zzali()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcrk:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_42

    if-nez v0, :cond_2a

    monitor-exit p0

    return-void

    :cond_2a
    :try_start_2a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvc;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgij:Lcom/google/android/gms/internal/ads/zzcvb;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzaqo;->zzdiu:Lcom/google/android/gms/internal/ads/zztx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaqo;->zzbqy:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcvo;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcvo;-><init>(Lcom/google/android/gms/internal/ads/zzcvl;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzcvb;->zza(Lcom/google/android/gms/internal/ads/zztx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcmt;Lcom/google/android/gms/internal/ads/zzcms;)Z
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_42

    monitor-exit p0

    return-void

    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvo;)V
    .registers 4

    const-string v0, "setAdMetadataListener can only be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcui;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcvn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcvn;-><init>(Lcom/google/android/gms/internal/ads/zzcvl;Lcom/google/android/gms/internal/ads/zzvo;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcui;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void
.end method

.method public final declared-synchronized zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_23

    if-nez v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    if-eqz p1, :cond_19

    :try_start_e
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_19

    check-cast p1, Landroid/app/Activity;

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgcq:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbyz;->zzb(ZLandroid/app/Activity;)V
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    if-eqz v0, :cond_1d

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_14

    :cond_e
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkk;->zzafm()Lcom/google/android/gms/internal/ads/zzbnl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnl;->zzbu(Landroid/content/Context;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    if-eqz v0, :cond_1d

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_14

    :cond_e
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkk;->zzafm()Lcom/google/android/gms/internal/ads/zzbnl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnl;->zzbv(Landroid/content/Context;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcui;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    if-eqz v0, :cond_23

    if-nez p1, :cond_13

    goto :goto_1a

    :cond_13
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    :goto_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkk;->zzafm()Lcom/google/android/gms/internal/ads/zzbnl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbnl;->zzbw(Landroid/content/Context;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzpl()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyz;->zzpl()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method
