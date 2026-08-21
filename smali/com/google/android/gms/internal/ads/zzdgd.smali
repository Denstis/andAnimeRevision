###### Class com.google.android.gms.internal.ads.zzdgd (com.google.android.gms.internal.ads.zzdgd)
.class final Lcom/google/android/gms/internal/ads/zzdgd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdex;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdex<",
        "Lcom/google/android/gms/internal/ads/zzdel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdev;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgc;-><init>(Lcom/google/android/gms/internal/ads/zzdev;)V

    return-object v0
.end method

.method public final zzapo()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/gms/internal/ads/zzdel;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzdel;

    return-object v0
.end method
