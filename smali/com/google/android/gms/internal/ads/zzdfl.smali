###### Class com.google.android.gms.internal.ads.zzdfl (com.google.android.gms.internal.ads.zzdfl)
.class final Lcom/google/android/gms/internal/ads/zzdfl;
.super Lcom/google/android/gms/internal/ads/zzdem;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdem<",
        "Lcom/google/android/gms/internal/ads/zzdec;",
        "Lcom/google/android/gms/internal/ads/zzdhq;",
        "Lcom/google/android/gms/internal/ads/zzdhr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzdec;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdhq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdhr;

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmKey"

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhq;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdou;->zzx(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhq;->zzaqj()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdou;->zzfg(I)V

    return-void
.end method

.method protected final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhr;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdou;->zzfg(I)V

    return-void
.end method

.method protected final synthetic zze(Lcom/google/android/gms/internal/ads/zzdsg;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhq;->zzaqj()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdmh;-><init>([B)V

    return-object v0
.end method

.method protected final synthetic zzg(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdhq;->zzaro()Lcom/google/android/gms/internal/ads/zzdhq$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhr;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdoj;->zzff(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhq$zza;->zzal(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdhq$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdhq$zza;->zzdz(I)Lcom/google/android/gms/internal/ads/zzdhq$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhq;

    return-object p1
.end method

.method protected final synthetic zzs(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhq;->zzaj(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdhq;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzt(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhr;->zzak(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdhr;

    move-result-object p1

    return-object p1
.end method
