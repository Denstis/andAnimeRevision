###### Class com.google.android.gms.internal.ads.zzbxx (com.google.android.gms.internal.ads.zzbxx)
.class public final Lcom/google/android/gms/internal/ads/zzbxx;
.super Lcom/google/android/gms/internal/ads/zzabz;
.source ""


# instance fields
.field private final zzffi:Ljava/lang/String;

.field private final zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

.field private final zzfml:Lcom/google/android/gms/internal/ads/zzbuj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuj;Lcom/google/android/gms/internal/ads/zzbur;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzffi:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuj;->destroy()V

    return-void
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getHeadline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getImages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzffi:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStarRating()D
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getStarRating()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getStore()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0

    return-object v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuj;->zzf(Landroid/os/Bundle;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuj;->zzh(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuj;->zzg(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzqm()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzqn()Lcom/google/android/gms/internal/ads/zzabi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzqn()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    return-object v0
.end method

.method public final zzqo()Lcom/google/android/gms/internal/ads/zzaba;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzqo()Lcom/google/android/gms/internal/ads/zzaba;

    move-result-object v0

    return-object v0
.end method

.method public final zzqp()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzqp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
