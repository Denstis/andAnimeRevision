###### Class com.google.android.gms.internal.ads.zzdtp (com.google.android.gms.internal.ads.zzdtp)
.class final Lcom/google/android/gms/internal/ads/zzdtp;
.super Lcom/google/android/gms/internal/ads/zzdtn;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdtn<",
        "Lcom/google/android/gms/internal/ads/zzdtq;",
        "Lcom/google/android/gms/internal/ads/zzdtq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtn;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtq;)V
    .registers 2

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdqw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;IJ)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtq;->zzc(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtq;->zzc(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdtq;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtq;->zzc(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtq;->zzb(Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdsw;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method final zzak(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdtq;->zzaxj()V

    return-void
.end method

.method final synthetic zzaq(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdtq;->zzaxj()V

    return-object p1
.end method

.method final synthetic zzau(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdtq;->zzazu()I

    move-result p1

    return p1
.end method

.method final synthetic zzay(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

    return-object p1
.end method

.method final synthetic zzaz(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtq;->zzbbx()Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtq;->zzbby()Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdtp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtq;)V

    :cond_12
    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/Object;IJ)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtq;->zzc(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zzba(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdtq;->zzbbz()I

    move-result p1

    return p1
.end method

.method final synthetic zzbbw()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtq;->zzbby()Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzc(Ljava/lang/Object;II)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtq;->zzc(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtq;->zza(Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void
.end method

.method final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtq;)V

    return-void
.end method

.method final synthetic zzi(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtp;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtq;)V

    return-void
.end method

.method final synthetic zzj(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtq;->zzbbx()Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdtq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p1

    :cond_f
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtq;->zza(Lcom/google/android/gms/internal/ads/zzdtq;Lcom/google/android/gms/internal/ads/zzdtq;)Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object p1

    return-object p1
.end method
