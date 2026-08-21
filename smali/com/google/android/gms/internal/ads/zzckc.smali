###### Class com.google.android.gms.internal.ads.zzckc (com.google.android.gms.internal.ads.zzckc)
.class final synthetic Lcom/google/android/gms/internal/ads/zzckc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdi;


# instance fields
.field private final zzehv:Lcom/google/android/gms/internal/ads/zzbbw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckc;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method

.method static zzq(Lcom/google/android/gms/internal/ads/zzbbw;)Lcom/google/android/gms/internal/ads/zzbdi;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzckc;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    return-object v0
.end method


# virtual methods
.method public final zzrf()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckc;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzsu()V

    return-void
.end method
