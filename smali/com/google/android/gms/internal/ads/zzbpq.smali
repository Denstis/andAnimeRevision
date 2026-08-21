###### Class com.google.android.gms.internal.ads.zzbpq (com.google.android.gms.internal.ads.zzbpq)
.class public final Lcom/google/android/gms/internal/ads/zzbpq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzbqs<",
        "Lcom/google/android/gms/internal/ads/zzbnm;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzfhv:Lcom/google/android/gms/internal/ads/zzbpn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbpn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpq;->zzfhv:Lcom/google/android/gms/internal/ads/zzbpn;

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzbpn;)Lcom/google/android/gms/internal/ads/zzbpq;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbpq;-><init>(Lcom/google/android/gms/internal/ads/zzbpn;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
