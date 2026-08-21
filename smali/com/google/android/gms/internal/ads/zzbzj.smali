###### Class com.google.android.gms.internal.ads.zzbzj (com.google.android.gms.internal.ads.zzbzj)
.class public final Lcom/google/android/gms/internal/ads/zzbzj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfql:Lcom/google/android/gms/internal/ads/zzbzj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbzj;->zzfql:Lcom/google/android/gms/internal/ads/zzbzj;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzajj()Lcom/google/android/gms/internal/ads/zzbzj;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzj;->zzfql:Lcom/google/android/gms/internal/ads/zzbzj;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    const-string v0, "rewarded"

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
