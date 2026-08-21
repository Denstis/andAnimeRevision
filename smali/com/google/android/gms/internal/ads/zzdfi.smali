###### Class com.google.android.gms.internal.ads.zzdfi (com.google.android.gms.internal.ads.zzdfi)
.class final Lcom/google/android/gms/internal/ads/zzdfi;
.super Lcom/google/android/gms/internal/ads/zzdem;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdem<",
        "Lcom/google/android/gms/internal/ads/zzdec;",
        "Lcom/google/android/gms/internal/ads/zzdhe;",
        "Lcom/google/android/gms/internal/ads/zzdhf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzdec;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdhe;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdhf;

    const-string v3, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdem;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhe;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdou;->zzx(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhe;->zzaqj()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpm;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdou;->zzfg(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhe;->zzarc()Lcom/google/android/gms/internal/ads/zzdhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhi;->zzaqz()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_36

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhe;->zzarc()Lcom/google/android/gms/internal/ads/zzdhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhi;->zzaqz()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2e

    goto :goto_36

    :cond_2e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    :goto_36
    return-void
.end method

.method protected final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhf;->getKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdou;->zzfg(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhf;->zzarc()Lcom/google/android/gms/internal/ads/zzdhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhi;->zzaqz()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhf;->zzarc()Lcom/google/android/gms/internal/ads/zzdhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhi;->zzaqz()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_22

    goto :goto_2a

    :cond_22
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzdsg;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhe;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhe;->zzaqj()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpm;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhe;->zzarc()Lcom/google/android/gms/internal/ads/zzdhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhi;->zzaqz()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdmf;-><init>([BI)V

    return-object v0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdhe;->zzard()Lcom/google/android/gms/internal/ads/zzdhe$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhf;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdoj;->zzff(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdhe$zza;->zzaf(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdhe$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhf;->zzarc()Lcom/google/android/gms/internal/ads/zzdhi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhe$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdhi;)Lcom/google/android/gms/internal/ads/zzdhe$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdhe$zza;->zzdx(I)Lcom/google/android/gms/internal/ads/zzdhe$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhe;

    return-object p1
.end method

.method protected final synthetic zzs(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhe;->zzad(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdhe;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzt(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhf;->zzae(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdhf;

    move-result-object p1

    return-object p1
.end method
