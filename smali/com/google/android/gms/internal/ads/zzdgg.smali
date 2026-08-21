###### Class com.google.android.gms.internal.ads.zzdgg (com.google.android.gms.internal.ads.zzdgg)
.class final Lcom/google/android/gms/internal/ads/zzdgg;
.super Lcom/google/android/gms/internal/ads/zzdem;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdem<",
        "Lcom/google/android/gms/internal/ads/zzdet;",
        "Lcom/google/android/gms/internal/ads/zzdji;",
        "Lcom/google/android/gms/internal/ads/zzdjj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzdet;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdji;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdjj;

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdem;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdjm;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjm;->zzatr()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_54

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgj;->zzgtk:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjm;->zzatq()Lcom/google/android/gms/internal/ads/zzdjg;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_45

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjm;->zzatr()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_28

    goto :goto_4d

    :cond_28
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjm;->zzatr()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_3f

    goto :goto_4d

    :cond_3f
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjm;->zzatr()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_4e

    :goto_4d
    return-void

    :cond_4e
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzapp()Lcom/google/android/gms/internal/ads/zzdjn$zzb;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdjn$zzb;->zzgxo:Lcom/google/android/gms/internal/ads/zzdjn$zzb;

    return-object v0
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdji;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdji;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdou;->zzx(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdji;->zzaqj()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpm;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdji;->zzatk()Lcom/google/android/gms/internal/ads/zzdjm;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdgg;->zza(Lcom/google/android/gms/internal/ads/zzdjm;)V

    return-void

    :cond_1e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjj;->getKeySize()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjj;->zzatk()Lcom/google/android/gms/internal/ads/zzdjm;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdgg;->zza(Lcom/google/android/gms/internal/ads/zzdjm;)V

    return-void

    :cond_12
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzdsg;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdji;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdji;->zzatk()Lcom/google/android/gms/internal/ads/zzdjm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjm;->zzatq()Lcom/google/android/gms/internal/ads/zzdjg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdji;->zzaqj()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpm;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdji;->zzatk()Lcom/google/android/gms/internal/ads/zzdjm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjm;->zzatr()I

    move-result p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgj;->zzgtk:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_42

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3a

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoi;

    const-string v1, "HMACSHA512"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdoi;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    :cond_3a
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoi;

    const-string v1, "HMACSHA256"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdoi;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    :cond_4a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoi;

    const-string v1, "HMACSHA1"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdoi;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdjj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdji;->zzatl()Lcom/google/android/gms/internal/ads/zzdji$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdji$zza;->zzem(I)Lcom/google/android/gms/internal/ads/zzdji$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjj;->zzatk()Lcom/google/android/gms/internal/ads/zzdjm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdji$zza;->zzc(Lcom/google/android/gms/internal/ads/zzdjm;)Lcom/google/android/gms/internal/ads/zzdji$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjj;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdoj;->zzff(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdji$zza;->zzbm(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdji$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdji;

    return-object p1
.end method

.method protected final synthetic zzs(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdji;->zzbk(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdji;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzt(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdjj;->zzbl(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdjj;

    move-result-object p1

    return-object p1
.end method
