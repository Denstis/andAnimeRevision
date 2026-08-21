###### Class com.google.android.gms.internal.ads.zzacb (com.google.android.gms.internal.ads.zzacb)
.class public final Lcom/google/android/gms/internal/ads/zzacb;
.super Lcom/google/android/gms/ads/formats/NativeAppInstallAd;
.source ""


# instance fields
.field private final zzcen:Lcom/google/android/gms/ads/VideoController;

.field private final zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

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


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabw;)V
    .registers 7

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwg:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcen:Lcom/google/android/gms/ads/VideoController;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    const/4 p1, 0x0

    :try_start_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzabw;->getImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_49

    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_49

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzabi;

    if-eqz v4, :cond_42

    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/ads/zzabi;

    goto :goto_4a

    :cond_42
    new-instance v3, Lcom/google/android/gms/internal/ads/zzabk;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Landroid/os/IBinder;)V

    move-object v2, v3

    goto :goto_4a

    :cond_49
    move-object v2, p1

    :goto_4a
    if-eqz v2, :cond_22

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwg:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzabn;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzabn;-><init>(Lcom/google/android/gms/internal/ads/zzabi;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_56} :catch_57

    goto :goto_22

    :catch_57
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5b
    :try_start_5b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzabw;->zzqn()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v1

    if-eqz v1, :cond_6d

    new-instance v2, Lcom/google/android/gms/internal/ads/zzabn;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzabn;-><init>(Lcom/google/android/gms/internal/ads/zzabi;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_68} :catch_69

    goto :goto_6e

    :catch_69
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6d
    move-object v2, p1

    :goto_6e
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwh:Lcom/google/android/gms/internal/ads/zzabn;

    :try_start_70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzabw;->zzqo()Lcom/google/android/gms/internal/ads/zzaba;

    move-result-object v1

    if-eqz v1, :cond_89

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzabw;->zzqo()Lcom/google/android/gms/internal/ads/zzaba;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzabf;-><init>(Lcom/google/android/gms/internal/ads/zzaba;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_83} :catch_85

    move-object p1, v1

    goto :goto_89

    :catch_85
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_89
    :goto_89
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwi:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-void
.end method

.method private final zzqm()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabw;->zzqm()Lcom/google/android/gms/dynamic/IObjectWrapper;

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
.method public final destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabw;->destroy()V
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwi:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-object v0
.end method

.method public final getBody()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabw;->getBody()Ljava/lang/String;

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

.method public final getCallToAction()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabw;->getCallToAction()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabw;->getExtras()Landroid/os/Bundle;

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

.method public final getHeadline()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabw;->getHeadline()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwh:Lcom/google/android/gms/internal/ads/zzabn;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwg:Ljava/util/List;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabw;->getMediationAdapterClassName()Ljava/lang/String;

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

.method public final getPrice()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabw;->getPrice()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzabw;->getStarRating()D

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

.method public final getStore()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabw;->getStore()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabw;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcen:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzabw;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcen:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabw;->performClick(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabw;->recordImpression(Landroid/os/Bundle;)Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacb;->zzcwf:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabw;->reportTouchEvent(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final synthetic zzjd()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacb;->zzqm()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
