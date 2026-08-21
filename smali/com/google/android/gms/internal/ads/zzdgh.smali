###### Class com.google.android.gms.internal.ads.zzdgh (com.google.android.gms.internal.ads.zzdgh)
.class final Lcom/google/android/gms/internal/ads/zzdgh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmv;


# instance fields
.field private final zzgtn:Ljava/lang/String;

.field private final zzgto:I

.field private zzgtp:Lcom/google/android/gms/internal/ads/zzdhq;

.field private zzgtq:Lcom/google/android/gms/internal/ads/zzdgo;

.field private zzgtr:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjt;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjt;->zzatu()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtn:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :try_start_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjt;->zzatv()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhr;->zzak(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdhr;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdey;->zzb(Lcom/google/android/gms/internal/ads/zzdjt;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtp:Lcom/google/android/gms/internal/ads/zzdhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhr;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgto:I
    :try_end_29
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_13 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtn:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :try_start_3d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjt;->zzatv()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgp;->zzv(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdgp;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdey;->zzb(Lcom/google/android/gms/internal/ads/zzdjt;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtq:Lcom/google/android/gms/internal/ads/zzdgo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgp;->zzaqf()Lcom/google/android/gms/internal/ads/zzdha;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdha;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtr:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgp;->zzaqg()Lcom/google/android/gms/internal/ads/zzdjj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjj;->getKeySize()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtr:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgto:I
    :try_end_64
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_3d .. :try_end_64} :catch_65

    return-void

    :catch_65
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unsupported AEAD DEM key type: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_83

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_89

    :cond_83
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_89
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzaqa()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgto:I

    return v0
.end method

.method public final zzl([B)Lcom/google/android/gms/internal/ads/zzdec;
    .registers 6

    const-class v0, Lcom/google/android/gms/internal/ads/zzdec;

    array-length v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgto:I

    if-ne v1, v2, :cond_b0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtn:Ljava/lang/String;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdhq;->zzaro()Lcom/google/android/gms/internal/ads/zzdhq$zza;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtp:Lcom/google/android/gms/internal/ads/zzdhq;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdhq$zza;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgto:I

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdpm;->zzh([BII)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdhq$zza;->zzal(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdhq$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhq;

    :goto_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtn:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdsg;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdec;

    return-object p1

    :cond_37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtn:Ljava/lang/String;

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtr:I

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtr:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgto:I

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdgx;->zzaqu()Lcom/google/android/gms/internal/ads/zzdgx$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtq:Lcom/google/android/gms/internal/ads/zzdgo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdgo;->zzaqb()Lcom/google/android/gms/internal/ads/zzdgx;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdgx$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdgx$zza;->zzab(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdgx$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdji;->zzatl()Lcom/google/android/gms/internal/ads/zzdji$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtq:Lcom/google/android/gms/internal/ads/zzdgo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdgo;->zzaqc()Lcom/google/android/gms/internal/ads/zzdji;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdji$zza;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzdji$zza;->zzbm(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdji$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdji;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdgo;->zzaqd()Lcom/google/android/gms/internal/ads/zzdgo$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdgh;->zzgtq:Lcom/google/android/gms/internal/ads/zzdgo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdgo;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdgo$zza;->zzdu(I)Lcom/google/android/gms/internal/ads/zzdgo$zza;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdgo$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgx;)Lcom/google/android/gms/internal/ads/zzdgo$zza;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdgo$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdji;)Lcom/google/android/gms/internal/ads/zzdgo$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgo;

    goto :goto_2e

    :cond_a8
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_b9

    :goto_b8
    throw p1

    :goto_b9
    goto :goto_b8
.end method
