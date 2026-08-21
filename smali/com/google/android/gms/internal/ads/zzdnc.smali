###### Class com.google.android.gms.internal.ads.zzdnc (com.google.android.gms.internal.ads.zzdnc)
.class public final Lcom/google/android/gms/internal/ads/zzdnc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzhcj:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzhck:Lcom/google/android/gms/internal/ads/zzdog;


# direct methods
.method public constructor <init>([B[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdog;->zzu([B)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhcj:Lcom/google/android/gms/internal/ads/zzdog;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdog;->zzu([B)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhck:Lcom/google/android/gms/internal/ads/zzdog;

    return-void
.end method


# virtual methods
.method public final zzaww()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhcj:Lcom/google/android/gms/internal/ads/zzdog;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdog;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final zzawx()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhck:Lcom/google/android/gms/internal/ads/zzdog;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdog;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
