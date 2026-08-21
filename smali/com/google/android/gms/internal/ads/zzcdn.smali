###### Class com.google.android.gms.internal.ads.zzcdn (com.google.android.gms.internal.ads.zzcdn)
.class public final Lcom/google/android/gms/internal/ads/zzcdn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final zzful:Lcom/google/android/gms/internal/ads/zzcdn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcdn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdn;->zzful:Lcom/google/android/gms/internal/ads/zzcdn;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzakg()Lcom/google/android/gms/internal/ads/zzcdn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdn;->zzful:Lcom/google/android/gms/internal/ads/zzcdn;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzza;->zzpr()Ljava/util/List;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
