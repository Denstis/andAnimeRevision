###### Class com.google.android.gms.internal.ads.zzsi (com.google.android.gms.internal.ads.zzsi)
.class public final Lcom/google/android/gms/internal/ads/zzsi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field zzbtw:Lcom/google/android/gms/internal/ads/zzfx;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field zzbtx:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzza;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcql:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    :try_start_18
    const-string v0, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzsk;->zzbty:Lcom/google/android/gms/internal/ads/zzaxk;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtw:Lcom/google/android/gms/internal/ads/zzfx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtw:Lcom/google/android/gms/internal/ads/zzfx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    const-string v1, "GMA_SDK"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfx;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtx:Z
    :try_end_35
    .catch Lcom/google/android/gms/internal/ads/zzaxj; {:try_start_18 .. :try_end_35} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_35} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_35} :catch_36

    return-void

    :catch_36
    const-string p1, "Cannot dynamite load clearcut"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzza;->initialize(Landroid/content/Context;)V

    :try_start_6
    const-string p3, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsl;->zzbty:Lcom/google/android/gms/internal/ads/zzaxk;

    invoke-static {p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxk;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzfx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtw:Lcom/google/android/gms/internal/ads/zzfx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtw:Lcom/google/android/gms/internal/ads/zzfx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfx;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtx:Z
    :try_end_22
    .catch Lcom/google/android/gms/internal/ads/zzaxj; {:try_start_6 .. :try_end_22} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_22} :catch_23

    return-void

    :catch_23
    const-string p1, "Cannot dynamite load clearcut"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzf([B)Lcom/google/android/gms/internal/ads/zzsm;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzsm;-><init>(Lcom/google/android/gms/internal/ads/zzsi;[BLcom/google/android/gms/internal/ads/zzsn;)V

    return-object v0
.end method
