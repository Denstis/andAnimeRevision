###### Class com.google.android.gms.internal.ads.zzbgi (com.google.android.gms.internal.ads.zzbgi)
.class public final Lcom/google/android/gms/internal/ads/zzbgi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzbcb;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfar:Lcom/google/android/gms/internal/ads/zzbgi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzfar:Lcom/google/android/gms/internal/ads/zzbgi;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzadv()Lcom/google/android/gms/internal/ads/zzbgi;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzfar:Lcom/google/android/gms/internal/ads/zzbgi;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcb;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcb;

    return-object v0
.end method
