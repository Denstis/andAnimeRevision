###### Class com.google.android.gms.internal.ads.zzbqb (com.google.android.gms.internal.ads.zzbqb)
.class public final Lcom/google/android/gms/internal/ads/zzbqb;
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
        "Lcom/google/android/gms/internal/ads/zzbog;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzfhv:Lcom/google/android/gms/internal/ads/zzbpn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbpn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqb;->zzfhv:Lcom/google/android/gms/internal/ads/zzbpn;

    return-void
.end method

.method public static zzq(Lcom/google/android/gms/internal/ads/zzbpn;)Lcom/google/android/gms/internal/ads/zzbqb;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbqb;-><init>(Lcom/google/android/gms/internal/ads/zzbpn;)V

    return-object v0
.end method

.method public static zzr(Lcom/google/android/gms/internal/ads/zzbpn;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbpn;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbqs<",
            "Lcom/google/android/gms/internal/ads/zzbog;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbpn;->zzage()Ljava/util/Set;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqb;->zzfhv:Lcom/google/android/gms/internal/ads/zzbpn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbqb;->zzr(Lcom/google/android/gms/internal/ads/zzbpn;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
