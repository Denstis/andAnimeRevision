###### Class com.google.android.gms.internal.ads.zzaky (com.google.android.gms.internal.ads.zzaky)
.class public final Lcom/google/android/gms/internal/ads/zzaky;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;


# instance fields
.field private final zzabl:Ljava/lang/String;

.field private final zzcby:I

.field private final zzccj:Z

.field private final zzddp:I

.field private final zzddq:I

.field private final zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

.field private final zzdei:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdej:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zznc:Ljava/util/Date;

.field private final zzne:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zznf:Z

.field private final zzng:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzaay;Ljava/util/List;ZILjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lcom/google/android/gms/internal/ads/zzaay;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zznc:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzcby:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzne:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzng:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzaky;->zznf:Z

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzddp:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzccj:Z

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzddq:I

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzabl:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdei:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdej:Ljava/util/Map;

    if-eqz p8, :cond_7b

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2b
    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "custom:"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_75

    const/4 p3, 0x3

    const-string p4, ":"

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    array-length p4, p2

    if-ne p4, p3, :cond_2b

    const/4 p3, 0x2

    aget-object p4, p2, p3

    const-string p5, "true"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x1

    if-eqz p4, :cond_61

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdej:Ljava/util/Map;

    aget-object p2, p2, p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    :goto_5d
    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_61
    aget-object p3, p2, p3

    const-string p4, "false"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2b

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdej:Ljava/util/Map;

    aget-object p2, p2, p5

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    goto :goto_5d

    :cond_75
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdei:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_7b
    return-void
.end method


# virtual methods
.method public final getAdVolume()F
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxc;->zzos()F

    move-result v0

    return v0
.end method

.method public final getBirthday()Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zznc:Ljava/util/Date;

    return-object v0
.end method

.method public final getGender()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzcby:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzne:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzng:Landroid/location/Location;

    return-object v0
.end method

.method public final getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaay;->zzcvz:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaay;->zzbjv:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaay;->zzbjx:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaay;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2f

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaay;->zzbjy:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaay;->versionCode:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_42

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaay;->zzcwa:Lcom/google/android/gms/internal/ads/zzyj;

    if-eqz v1, :cond_42

    new-instance v2, Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/internal/ads/zzyj;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_42
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    return-object v0
.end method

.method public final isAdMuted()Z
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxc;->zzot()Z

    move-result v0

    return v0
.end method

.method public final isAppInstallAdRequested()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdei:Ljava/util/List;

    if-eqz v0, :cond_18

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdei:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final isContentAdRequested()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdei:Ljava/util/List;

    if-eqz v0, :cond_18

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdei:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final isDesignedForFamilies()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzccj:Z

    return v0
.end method

.method public final isTesting()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zznf:Z

    return v0
.end method

.method public final isUnifiedNativeAdRequested()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdei:Ljava/util/List;

    if-eqz v0, :cond_e

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final taggedForChildDirectedTreatment()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzddp:I

    return v0
.end method

.method public final zzsd()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdei:Ljava/util/List;

    if-eqz v0, :cond_e

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final zzse()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzdej:Ljava/util/Map;

    return-object v0
.end method
