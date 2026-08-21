###### Class com.google.android.gms.internal.ads.zzbrv (com.google.android.gms.internal.ads.zzbrv)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbrv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzehv:Lcom/google/android/gms/internal/ads/zzbbw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrv;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method

.method static zzh(Lcom/google/android/gms/internal/ads/zzbbw;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbrv;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrv;->zzehv:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->destroy()V

    return-void
.end method
