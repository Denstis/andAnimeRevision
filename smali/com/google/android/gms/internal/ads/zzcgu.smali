###### Class com.google.android.gms.internal.ads.zzcgu (com.google.android.gms.internal.ads.zzcgu)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcgu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkl;


# instance fields
.field private final zzfxq:Lcom/google/android/gms/internal/ads/zzcwm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcwm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzfxq:Lcom/google/android/gms/internal/ads/zzcwm;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcwm;)Lcom/google/android/gms/internal/ads/zzbkl;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcgu;-><init>(Lcom/google/android/gms/internal/ads/zzcwm;)V

    return-object v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzfxq:Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwm;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0

    return-object v0
.end method
