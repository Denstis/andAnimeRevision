###### Class com.google.android.gms.internal.ads.zzbgl (com.google.android.gms.internal.ads.zzbgl)
.class public final Lcom/google/android/gms/internal/ads/zzbgl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzyn;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfau:Lcom/google/android/gms/internal/ads/zzbgl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgl;->zzfau:Lcom/google/android/gms/internal/ads/zzbgl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzady()Lcom/google/android/gms/internal/ads/zzyn;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyn;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzyn;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgl;->zzady()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v0

    return-object v0
.end method
