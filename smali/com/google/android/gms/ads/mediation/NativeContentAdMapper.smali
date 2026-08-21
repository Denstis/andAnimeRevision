###### Class com.google.android.gms.ads.mediation.NativeContentAdMapper (com.google.android.gms.ads.mediation.NativeContentAdMapper)
.class public Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;
.super Lcom/google/android/gms/ads/mediation/NativeAdMapper;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zzdko:Ljava/lang/String;

.field private zzeip:Ljava/lang/String;

.field private zzeiq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private zzeis:Ljava/lang/String;

.field private zzeiy:Lcom/google/android/gms/ads/formats/NativeAd$Image;

.field private zzeiz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdvertiser()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzeiz:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzdko:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzeis:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzeip:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzeiq:Ljava/util/List;

    return-object v0
.end method

.method public final getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzeiy:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    return-object v0
.end method

.method public final setAdvertiser(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzeiz:Ljava/lang/String;

    return-void
.end method

.method public final setBody(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzdko:Ljava/lang/String;

    return-void
.end method

.method public final setCallToAction(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzeis:Ljava/lang/String;

    return-void
.end method

.method public final setHeadline(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzeip:Ljava/lang/String;

    return-void
.end method

.method public final setImages(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzeiq:Ljava/util/List;

    return-void
.end method

.method public final setLogo(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;->zzeiy:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    return-void
.end method
