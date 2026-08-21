###### Class com.google.android.gms.internal.ads.zzcty (com.google.android.gms.internal.ads.zzcty)
.class public final Lcom/google/android/gms/internal/ads/zzcty;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "+",
        "Lcom/google/android/gms/internal/ads/zzcrr<",
        "Lorg/json/JSONObject;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final zzghr:Lcom/google/android/gms/internal/ads/zzcty;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcty;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcty;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcty;->zzghr:Lcom/google/android/gms/internal/ads/zzcty;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzams()Lcom/google/android/gms/internal/ads/zzcru;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzcru<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzcrr<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzctw;->zzghq:Lcom/google/android/gms/internal/ads/zzcru;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcru;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcty;->zzams()Lcom/google/android/gms/internal/ads/zzcru;

    move-result-object v0

    return-object v0
.end method
