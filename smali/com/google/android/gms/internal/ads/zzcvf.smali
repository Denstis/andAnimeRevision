###### Class com.google.android.gms.internal.ads.zzcvf (com.google.android.gms.internal.ads.zzcvf)
.class public final Lcom/google/android/gms/internal/ads/zzcvf;
.super Lcom/google/android/gms/internal/ads/zzaqz;
.source ""


# instance fields
.field private final zzbqy:Ljava/lang/String;

.field private final zzfgu:Lcom/google/android/gms/internal/ads/zzcwc;

.field private final zzgij:Lcom/google/android/gms/internal/ads/zzcvb;

.field private final zzgik:Lcom/google/android/gms/internal/ads/zzcui;

.field private zzgil:Lcom/google/android/gms/internal/ads/zzbyz;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcvb;Lcom/google/android/gms/internal/ads/zzcui;Lcom/google/android/gms/internal/ads/zzcwc;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzbqy:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgij:Lcom/google/android/gms/internal/ads/zzcvb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzfgu:Lcom/google/android/gms/internal/ads/zzcwc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcvf;)Lcom/google/android/gms/internal/ads/zzbyz;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzbyz;)Lcom/google/android/gms/internal/ads/zzbyz;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    return-object p1
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

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

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyz;->zzajh()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    if-nez v0, :cond_17

    const-string p1, "Rewarded can not be shown before loaded"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcui;->zzcl(I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_24

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbyz;->zzb(ZLandroid/app/Activity;)V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzarb;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcui;->zzb(Lcom/google/android/gms/internal/ads/zzarb;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzarj;)V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcui;->zzb(Lcom/google/android/gms/internal/ads/zzarj;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzarr;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzfgu:Lcom/google/android/gms/internal/ads/zzcwc;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzarr;->zzdnz:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwc;->zzdnz:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzckm:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzarr;->zzdoa:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzcwc;->zzdoa:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zztx;Lcom/google/android/gms/internal/ads/zzari;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcui;->zza(Lcom/google/android/gms/internal/ads/zzari;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_25

    if-eqz p2, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcvc;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzcvc;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgij:Lcom/google/android/gms/internal/ads/zzcvb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzbqy:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcvi;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcvi;-><init>(Lcom/google/android/gms/internal/ads/zzcvf;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzcvb;->zza(Lcom/google/android/gms/internal/ads/zztx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcmt;Lcom/google/android/gms/internal/ads/zzcms;)Z
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwm;)V
    .registers 4

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcui;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgik:Lcom/google/android/gms/internal/ads/zzcui;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcvh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcvh;-><init>(Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzwm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcui;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void
.end method

.method public final declared-synchronized zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcvf;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzpk()Lcom/google/android/gms/internal/ads/zzaqv;
    .registers 2

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgil:Lcom/google/android/gms/internal/ads/zzbyz;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyz;->zzpk()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method
