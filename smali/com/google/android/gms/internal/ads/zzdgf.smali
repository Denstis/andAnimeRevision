###### Class com.google.android.gms.internal.ads.zzdgf (com.google.android.gms.internal.ads.zzdgf)
.class final Lcom/google/android/gms/internal/ads/zzdgf;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzdjb;)Lcom/google/android/gms/internal/ads/zzdnq;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdge;->zzgtl:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    sget-object p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzhdp:Lcom/google/android/gms/internal/ads/zzdnq;

    return-object p0

    :cond_14
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown curve type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzhdo:Lcom/google/android/gms/internal/ads/zzdnq;

    return-object p0

    :cond_3c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzhdn:Lcom/google/android/gms/internal/ads/zzdnq;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdhz;)Lcom/google/android/gms/internal/ads/zzdns;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdge;->zzgtm:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    sget-object p0, Lcom/google/android/gms/internal/ads/zzdns;->zzhdv:Lcom/google/android/gms/internal/ads/zzdns;

    return-object p0

    :cond_14
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown point format: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdns;->zzhdw:Lcom/google/android/gms/internal/ads/zzdns;

    return-object p0

    :cond_3c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdns;->zzhdu:Lcom/google/android/gms/internal/ads/zzdns;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdjg;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdge;->zzgtk:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    const-string p0, "HmacSha512"

    return-object p0

    :cond_14
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "hash unsupported for HMAC: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    const-string p0, "HmacSha256"

    return-object p0

    :cond_3c
    const-string p0, "HmacSha1"

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdip;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdip;->zzasq()Lcom/google/android/gms/internal/ads/zzdiw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiw;->zzatb()Lcom/google/android/gms/internal/ads/zzdjb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgf;->zza(Lcom/google/android/gms/internal/ads/zzdjb;)Lcom/google/android/gms/internal/ads/zzdnq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdno;->zza(Lcom/google/android/gms/internal/ads/zzdnq;)Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdip;->zzasq()Lcom/google/android/gms/internal/ads/zzdiw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiw;->zzaqp()Lcom/google/android/gms/internal/ads/zzdjg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgf;->zza(Lcom/google/android/gms/internal/ads/zzdjg;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdip;->zzass()Lcom/google/android/gms/internal/ads/zzdhz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhz;->zzgvc:Lcom/google/android/gms/internal/ads/zzdhz;

    if-eq v0, v1, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdip;->zzasr()Lcom/google/android/gms/internal/ads/zzdik;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdik;->zzasl()Lcom/google/android/gms/internal/ads/zzdjt;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Lcom/google/android/gms/internal/ads/zzdjt;)Lcom/google/android/gms/internal/ads/zzdjn;

    return-void

    :cond_2e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown EC point format"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
