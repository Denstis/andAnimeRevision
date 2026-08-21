###### Class com.google.android.gms.internal.ads.zzalm (com.google.android.gms.internal.ads.zzalm)
.class public final Lcom/google/android/gms/internal/ads/zzalm;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Lcom/google/ads/AdRequest$ErrorCode;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzalp;->zzder:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    return v1

    :cond_14
    return v0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zztx;Z)Lcom/google/ads/mediation/MediationAdRequest;
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztx;->zzcbz:Ljava/util/List;

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    move-object v5, v1

    new-instance v0, Lcom/google/ads/mediation/MediationAdRequest;

    new-instance v3, Ljava/util/Date;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zztx;->zzcbx:J

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zztx;->zzcby:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_24

    const/4 v2, 0x2

    if-eq v1, v2, :cond_21

    sget-object v1, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    :goto_1f
    move-object v4, v1

    goto :goto_27

    :cond_21
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_1f

    :cond_24
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_1f

    :goto_27
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zztx;->zzng:Landroid/location/Location;

    move-object v2, v0

    move v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/mediation/MediationAdRequest;-><init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V

    return-object v0
.end method
