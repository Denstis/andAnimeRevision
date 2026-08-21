###### Class com.google.android.gms.internal.ads.zzadl (com.google.android.gms.internal.ads.zzadl)
.class public final Lcom/google/android/gms/internal/ads/zzadl;
.super Lcom/google/android/gms/ads/formats/UnifiedNativeAd;
.source ""


# instance fields
.field private final zzcen:Lcom/google/android/gms/ads/VideoController;

.field private final zzcwg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcwh:Lcom/google/android/gms/internal/ads/zzabn;

.field private final zzcwi:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

.field private final zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

.field private final zzcwr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/MuteThisAdReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadg;)V
    .registers 7

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwg:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcen:Lcom/google/android/gms/ads/VideoController;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwr:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    const/4 p1, 0x0

    :try_start_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadg;->getImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_62

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_50

    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_50

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzabi;

    if-eqz v4, :cond_49

    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/ads/zzabi;

    goto :goto_51

    :cond_49
    new-instance v3, Lcom/google/android/gms/internal/ads/zzabk;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Landroid/os/IBinder;)V

    move-object v2, v3

    goto :goto_51

    :cond_50
    move-object v2, p1

    :goto_51
    if-eqz v2, :cond_29

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwg:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzabn;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzabn;-><init>(Lcom/google/android/gms/internal/ads/zzabi;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_5d} :catch_5e

    goto :goto_29

    :catch_5e
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_62
    :try_start_62
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadg;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_95

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6e
    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_83

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwl;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzwi;

    move-result-object v2

    goto :goto_84

    :cond_83
    move-object v2, p1

    :goto_84
    if-eqz v2, :cond_6e

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwr:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzwn;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzwn;-><init>(Lcom/google/android/gms/internal/ads/zzwi;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_90} :catch_91

    goto :goto_6e

    :catch_91
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_95
    :try_start_95
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadg;->zzqn()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v1

    if-eqz v1, :cond_a7

    new-instance v2, Lcom/google/android/gms/internal/ads/zzabn;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzabn;-><init>(Lcom/google/android/gms/internal/ads/zzabi;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_a2} :catch_a3

    goto :goto_a8

    :catch_a3
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a7
    move-object v2, p1

    :goto_a8
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwh:Lcom/google/android/gms/internal/ads/zzabn;

    :try_start_aa
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadg;->zzqo()Lcom/google/android/gms/internal/ads/zzaba;

    move-result-object v1

    if-eqz v1, :cond_c3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzadg;->zzqo()Lcom/google/android/gms/internal/ads/zzaba;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzabf;-><init>(Lcom/google/android/gms/internal/ads/zzaba;)V
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_bd} :catch_bf

    move-object p1, v1

    goto :goto_c3

    :catch_bf
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c3
    :goto_c3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwi:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-void
.end method

.method private final zzqm()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->zzqm()Lcom/google/android/gms/dynamic/IObjectWrapper;

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


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->cancelUnconfirmedClick()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "Failed to cancelUnconfirmedClick"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final enableCustomClickGesture()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->zzqw()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdChoicesInfo()Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwi:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->getAdvertiser()Ljava/lang/String;

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

.method public final getBody()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->getBody()Ljava/lang/String;

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

.method public final getCallToAction()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->getCallToAction()Ljava/lang/String;

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

.method public final getExtras()Landroid/os/Bundle;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_9

    if-eqz v0, :cond_f

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->getHeadline()Ljava/lang/String;

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

.method public final getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwh:Lcom/google/android/gms/internal/ads/zzabn;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwg:Ljava/util/List;

    return-object v0
.end method

.method public final getMediaContent()Lcom/google/android/gms/ads/formats/UnifiedNativeAd$MediaContent;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->zzqx()Lcom/google/android/gms/internal/ads/zzabh;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadg;->zzqx()Lcom/google/android/gms/internal/ads/zzabh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Lcom/google/android/gms/internal/ads/zzabh;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->getMediationAdapterClassName()Ljava/lang/String;

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

.method public final getMuteThisAdReasons()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/MuteThisAdReason;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwr:Ljava/util/List;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->getPrice()Ljava/lang/String;

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

.method public final getStarRating()Ljava/lang/Double;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadg;->getStarRating()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v1

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getStore()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->getStore()Ljava/lang/String;

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

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcen:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadg;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzwr;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcen:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final isCustomClickGestureEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->isCustomClickGestureEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final isCustomMuteThisAdEnabled()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->isCustomMuteThisAdEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final muteThisAd(Lcom/google/android/gms/ads/MuteThisAdReason;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadl;->isCustomMuteThisAdEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "Ad is not custom mute enabled"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzwi;)V

    return-void

    :cond_15
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzwn;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwn;->zzow()Lcom/google/android/gms/internal/ads/zzwi;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzwi;)V

    return-void

    :cond_25
    const-string p1, "Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->performClick(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordCustomClickGesture()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->recordCustomClickGesture()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->reportTouchEvent(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setMuteThisAdListener(Lcom/google/android/gms/ads/MuteThisAdListener;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(Lcom/google/android/gms/ads/MuteThisAdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzwe;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setUnconfirmedClickListener(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzadu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzadf;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "Failed to setUnconfirmedClickListener"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final synthetic zzjd()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzadl;->zzqm()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzji()Ljava/lang/Object;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzcwq:Lcom/google/android/gms/internal/ads/zzadg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadg;->zzqp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method
