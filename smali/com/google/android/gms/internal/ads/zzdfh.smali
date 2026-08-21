###### Class com.google.android.gms.internal.ads.zzdfh (com.google.android.gms.internal.ads.zzdfh)
.class final Lcom/google/android/gms/internal/ads/zzdfh;
.super Lcom/google/android/gms/internal/ads/zzdem;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdem<",
        "Lcom/google/android/gms/internal/ads/zzdec;",
        "Lcom/google/android/gms/internal/ads/zzdgo;",
        "Lcom/google/android/gms/internal/ads/zzdgp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzdec;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdgo;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdgp;

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdem;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdfj;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Lcom/google/android/gms/internal/ads/zzden;)V

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
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgo;->getVersion()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdou;->zzx(II)V

    return-void
.end method

.method protected final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgp;->zzaqf()Lcom/google/android/gms/internal/ads/zzdha;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdha;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdou;->zzfg(I)V

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzdsg;)Ljava/lang/Object;
    .registers 7

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgo;->zzaqb()Lcom/google/android/gms/internal/ads/zzdgx;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/ads/zzdof;

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdsg;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdof;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgo;->zzaqc()Lcom/google/android/gms/internal/ads/zzdji;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzdet;

    const-string v4, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdsg;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdet;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgo;->zzaqc()Lcom/google/android/gms/internal/ads/zzdji;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdji;->zzatk()Lcom/google/android/gms/internal/ads/zzdjm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjm;->zzatr()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdnr;-><init>(Lcom/google/android/gms/internal/ads/zzdof;Lcom/google/android/gms/internal/ads/zzdet;I)V

    return-object v0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgp;->zzaqf()Lcom/google/android/gms/internal/ads/zzdha;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdgx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgp;->zzaqg()Lcom/google/android/gms/internal/ads/zzdjj;

    move-result-object p1

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdji;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdgo;->zzaqd()Lcom/google/android/gms/internal/ads/zzdgo$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdgo$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgx;)Lcom/google/android/gms/internal/ads/zzdgo$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgo$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdji;)Lcom/google/android/gms/internal/ads/zzdgo$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdgo$zza;->zzdu(I)Lcom/google/android/gms/internal/ads/zzdgo$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgo;

    return-object p1
.end method

.method protected final synthetic zzs(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdgo;->zzu(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdgo;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzt(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdgp;->zzv(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdgp;

    move-result-object p1

    return-object p1
.end method
