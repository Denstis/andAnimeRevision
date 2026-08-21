###### Class com.google.android.gms.internal.ads.zzczy (com.google.android.gms.internal.ads.zzczy)
.class public final Lcom/google/android/gms/internal/ads/zzczy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzgoi:Lcom/google/android/gms/internal/ads/zzczz;

.field private static volatile zzgoj:Lcom/google/android/gms/internal/ads/zzczz;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdaa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdaa;-><init>(Lcom/google/android/gms/internal/ads/zzdab;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzczy;->zzgoi:Lcom/google/android/gms/internal/ads/zzczz;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzczy;->zzgoj:Lcom/google/android/gms/internal/ads/zzczz;

    return-void
.end method

.method public static zzaoe()Lcom/google/android/gms/internal/ads/zzczz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzczy;->zzgoj:Lcom/google/android/gms/internal/ads/zzczz;

    return-object v0
.end method
