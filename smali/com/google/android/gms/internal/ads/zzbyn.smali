###### Class com.google.android.gms.internal.ads.zzbyn (com.google.android.gms.internal.ads.zzbyn)
.class final Lcom/google/android/gms/internal/ads/zzbyn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Lcom/google/android/gms/internal/ads/zzbbw;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfpv:Ljava/lang/String;

.field private final synthetic zzfpw:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbyh;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyn;->zzfpv:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbyn;->zzfpw:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyn;->zzfpv:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyn;->zzfpw:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzagn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method
