###### Class com.google.android.gms.internal.ads.zzdep (com.google.android.gms.internal.ads.zzdep)
.class public final Lcom/google/android/gms/internal/ads/zzdep;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzgsp:Lcom/google/android/gms/internal/ads/zzdjx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdjx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdep;->zzgsp:Lcom/google/android/gms/internal/ads/zzdjx;

    return-void
.end method

.method static final zza(Lcom/google/android/gms/internal/ads/zzdjx;)Lcom/google/android/gms/internal/ads/zzdep;
    .registers 2

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdjx;->zzauk()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdep;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdep;-><init>(Lcom/google/android/gms/internal/ads/zzdjx;)V

    return-object v0

    :cond_e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdep;->zzgsp:Lcom/google/android/gms/internal/ads/zzdjx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdfb;->zzc(Lcom/google/android/gms/internal/ads/zzdjx;)Lcom/google/android/gms/internal/ads/zzdjy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzapq()Lcom/google/android/gms/internal/ads/zzdjx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdep;->zzgsp:Lcom/google/android/gms/internal/ads/zzdjx;

    return-object v0
.end method
