###### Class com.google.android.gms.internal.ads.zzchq (com.google.android.gms.internal.ads.zzchq)
.class final synthetic Lcom/google/android/gms/internal/ads/zzchq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfyk:Lcom/google/android/gms/internal/ads/zzcab;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcab;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzfyk:Lcom/google/android/gms/internal/ads/zzcab;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcab;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzchq;-><init>(Lcom/google/android/gms/internal/ads/zzcab;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzfyk:Lcom/google/android/gms/internal/ads/zzcab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcab;->zzajm()V

    return-void
.end method
