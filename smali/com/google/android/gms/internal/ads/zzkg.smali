###### Class com.google.android.gms.internal.ads.zzkg (com.google.android.gms.internal.ads.zzkg)
.class final Lcom/google/android/gms/internal/ads/zzkg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzix;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzgd()[Lcom/google/android/gms/internal/ads/zziw;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zziw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzkd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzkd;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
