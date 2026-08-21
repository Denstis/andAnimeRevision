###### Class com.google.android.gms.internal.ads.zzavz (com.google.android.gms.internal.ads.zzavz)
.class final Lcom/google/android/gms/internal/ads/zzavz;
.super Lcom/google/android/gms/internal/ads/zzav;
.source ""


# instance fields
.field private final synthetic zzdul:[B

.field private final synthetic zzdum:Ljava/util/Map;

.field private final synthetic zzdun:Lcom/google/android/gms/internal/ads/zzaxc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavy;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzy;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/zzaxc;)V
    .registers 9

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdul:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdum:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdun:Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzav;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzy;)V

    return-void
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdum:Ljava/util/Map;

    if-nez v0, :cond_8

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzq;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method protected final synthetic zza(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzavz;->zzh(Ljava/lang/String;)V

    return-void
.end method

.method public final zzf()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdul:[B

    if-nez v0, :cond_8

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzq;->zzf()[B

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method protected final zzh(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->zzdun:Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzep(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzav;->zzh(Ljava/lang/String;)V

    return-void
.end method
