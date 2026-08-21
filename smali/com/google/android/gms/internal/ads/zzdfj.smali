###### Class com.google.android.gms.internal.ads.zzdfj (com.google.android.gms.internal.ads.zzdfj)
.class final Lcom/google/android/gms/internal/ads/zzdfj;
.super Lcom/google/android/gms/internal/ads/zzdem;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdem<",
        "Lcom/google/android/gms/internal/ads/zzdof;",
        "Lcom/google/android/gms/internal/ads/zzdgx;",
        "Lcom/google/android/gms/internal/ads/zzdha;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzdof;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdgx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdha;

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdem;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdhb;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdhb;->zzaqz()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdhb;->zzaqz()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_11

    return-void

    :cond_11
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgx;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdou;->zzx(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgx;->zzaqj()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpm;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdou;->zzfg(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgx;->zzaqt()Lcom/google/android/gms/internal/ads/zzdhb;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdfj;->zza(Lcom/google/android/gms/internal/ads/zzdhb;)V

    return-void
.end method

.method protected final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdha;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdha;->getKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdou;->zzfg(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdha;->zzaqt()Lcom/google/android/gms/internal/ads/zzdhb;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdfj;->zza(Lcom/google/android/gms/internal/ads/zzdhb;)V

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzdsg;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgx;->zzaqj()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpm;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgx;->zzaqt()Lcom/google/android/gms/internal/ads/zzdhb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhb;->zzaqz()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdmg;-><init>([BI)V

    return-object v0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdha;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdgx;->zzaqu()Lcom/google/android/gms/internal/ads/zzdgx$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdha;->zzaqt()Lcom/google/android/gms/internal/ads/zzdhb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdgx$zza;->zzc(Lcom/google/android/gms/internal/ads/zzdhb;)Lcom/google/android/gms/internal/ads/zzdgx$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdha;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdoj;->zzff(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgx$zza;->zzab(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdgx$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdgx$zza;->zzdw(I)Lcom/google/android/gms/internal/ads/zzdgx$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgx;

    return-object p1
.end method

.method protected final synthetic zzs(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdgx;->zzaa(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdgx;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzt(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdha;->zzac(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdha;

    move-result-object p1

    return-object p1
.end method
