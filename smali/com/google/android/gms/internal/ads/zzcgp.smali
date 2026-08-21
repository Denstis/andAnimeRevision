###### Class com.google.android.gms.internal.ads.zzcgp (com.google.android.gms.internal.ads.zzcgp)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcgp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkl;


# instance fields
.field private final zzehv:Lcom/google/android/gms/internal/ads/zzbbw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgp;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method

.method static zzp(Lcom/google/android/gms/internal/ads/zzbbw;)Lcom/google/android/gms/internal/ads/zzbkl;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcgp;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    return-object v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgp;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzxl()Lcom/google/android/gms/internal/ads/zzbco;

    move-result-object v0

    return-object v0
.end method
