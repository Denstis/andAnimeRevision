###### Class com.google.android.gms.internal.ads.zzacj (com.google.android.gms.internal.ads.zzacj)
.class public final Lcom/google/android/gms/internal/ads/zzacj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# static fields
.field private static zzcwl:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/google/android/gms/internal/ads/zzacj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcen:Lcom/google/android/gms/ads/VideoController;

.field private final zzcwm:Lcom/google/android/gms/internal/ads/zzace;

.field private final zzcwn:Lcom/google/android/gms/ads/formats/MediaView;

.field private zzcwo:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwl:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzace;)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcen:Lcom/google/android/gms/ads/VideoController;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    const/4 v1, 0x0

    :try_start_f
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzace;->zzqr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    move-exception p1

    goto :goto_1d

    :catch_1c
    move-exception p1

    :goto_1d
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_21
    if-eqz p1, :cond_3b

    new-instance v2, Lcom/google/android/gms/ads/formats/MediaView;

    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/formats/MediaView;-><init>(Landroid/content/Context;)V

    :try_start_28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/zzace;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_37

    if-nez p1, :cond_35

    goto :goto_3b

    :cond_35
    move-object v1, v2

    goto :goto_3b

    :catch_37
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwn:Lcom/google/android/gms/ads/formats/MediaView;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzace;)Lcom/google/android/gms/internal/ads/zzacj;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwl:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacj;->zzcwl:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzacj;

    if-eqz v1, :cond_13

    monitor-exit v0

    return-object v1

    :cond_13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzacj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzacj;-><init>(Lcom/google/android/gms/internal/ads/zzace;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzacj;->zzcwl:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzace;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAvailableAssetNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzace;->getAvailableAssetNames()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCustomTemplateId()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzace;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDisplayOpenMeasurement()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwo:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzace;->zzqs()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzabe;-><init>(Lcom/google/android/gms/internal/ads/zzace;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwo:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwo:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement;

    return-object v0
.end method

.method public final getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzace;->zzcp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p1

    if-eqz p1, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzabn;-><init>(Lcom/google/android/gms/internal/ads/zzabi;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzace;->zzco(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzace;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcen:Lcom/google/android/gms/ads/VideoController;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzwr;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcen:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final getVideoMediaView()Lcom/google/android/gms/ads/formats/MediaView;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwn:Lcom/google/android/gms/ads/formats/MediaView;

    return-object v0
.end method

.method public final performClick(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzace;->performClick(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzace;->recordImpression()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzqv()Lcom/google/android/gms/internal/ads/zzace;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacj;->zzcwm:Lcom/google/android/gms/internal/ads/zzace;

    return-object v0
.end method
