###### Class com.google.android.gms.internal.ads.zzclk (com.google.android.gms.internal.ads.zzclk)
.class final Lcom/google/android/gms/internal/ads/zzclk;
.super Lcom/google/android/gms/internal/ads/zzbrx;
.source ""


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcli;Lcom/google/android/gms/internal/ads/zzbsu;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbrx;-><init>(Lcom/google/android/gms/internal/ads/zzbsu;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbsz;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbsz;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbqs<",
            "Lcom/google/android/gms/internal/ads/zzbna;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
