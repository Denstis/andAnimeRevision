###### Class com.google.android.gms.internal.ads.zzdbo (com.google.android.gms.internal.ads.zzdbo)
.class final Lcom/google/android/gms/internal/ads/zzdbo;
.super Lcom/google/android/gms/internal/ads/zzdbd;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdbd<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzgpr:Lcom/google/android/gms/internal/ads/zzdbp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdbp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzgpr:Lcom/google/android/gms/internal/ads/zzdbp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzgpr:Lcom/google/android/gms/internal/ads/zzdbp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbp;->zza(Lcom/google/android/gms/internal/ads/zzdbp;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzr(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzgpr:Lcom/google/android/gms/internal/ads/zzdbp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbp;->zzb(Lcom/google/android/gms/internal/ads/zzdbp;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzgpr:Lcom/google/android/gms/internal/ads/zzdbp;

    aget-object v0, v0, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdbp;->zzb(Lcom/google/android/gms/internal/ads/zzdbp;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbo;->zzgpr:Lcom/google/android/gms/internal/ads/zzdbp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbp;->zza(Lcom/google/android/gms/internal/ads/zzdbp;)I

    move-result v0

    return v0
.end method

.method public final zzaoo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
