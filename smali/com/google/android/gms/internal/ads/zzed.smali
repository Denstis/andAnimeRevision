###### Class com.google.android.gms.internal.ads.zzed (com.google.android.gms.internal.ads.zzed)
.class final Lcom/google/android/gms/internal/ads/zzed;
.super Ljava/lang/Object;
.source ""


# static fields
.field static zzyo:Lcom/google/android/gms/internal/ads/zzdel;


# direct methods
.method static zzb(Lcom/google/android/gms/internal/ads/zzdx;)Z
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzed;->zzyo:Lcom/google/android/gms/internal/ads/zzdel;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcnh:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_37

    :cond_1c
    if-nez p0, :cond_20

    :goto_1e
    move-object v0, v2

    goto :goto_34

    :cond_20
    const-string v0, "OevwuCyaBOVW9Ln+QX7fmyTTWbeJYcctGFCVTrXabQZ00sMfUmORvoOrZvhdRFVu"

    const-string v4, "TTGXRr2x4uLkjJPzQqm9kQskRo6Bo/N0qnlRgwhhknY="

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/internal/ads/zzdx;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_2b

    goto :goto_1e

    :cond_2b
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_34
    if-nez v0, :cond_37

    return v3

    :cond_37
    :try_start_37
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcg;->zza(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3b} :catch_4f

    :try_start_3b
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdes;->zzj([B)Lcom/google/android/gms/internal/ads/zzdep;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfy;->zzgtc:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdee;->zza(Lcom/google/android/gms/internal/ads/zzdkl;)V

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzdga;->zza(Lcom/google/android/gms/internal/ads/zzdep;Lcom/google/android/gms/internal/ads/zzden;)Lcom/google/android/gms/internal/ads/zzdel;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzed;->zzyo:Lcom/google/android/gms/internal/ads/zzdel;
    :try_end_4a
    .catch Ljava/security/GeneralSecurityException; {:try_start_3b .. :try_end_4a} :catch_4f

    sget-object p0, Lcom/google/android/gms/internal/ads/zzed;->zzyo:Lcom/google/android/gms/internal/ads/zzdel;

    if-eqz p0, :cond_4f

    return v1

    :catch_4f
    :cond_4f
    return v3
.end method
