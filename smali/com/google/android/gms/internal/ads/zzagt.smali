###### Class com.google.android.gms.internal.ads.zzagt (com.google.android.gms.internal.ads.zzagt)
.class final Lcom/google/android/gms/internal/ads/zzagt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzczb:Lcom/google/android/gms/internal/ads/zzagw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzagw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzczb:Lcom/google/android/gms/internal/ads/zzagw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzagw;Lcom/google/android/gms/internal/ads/zzagq;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagt;-><init>(Lcom/google/android/gms/internal/ads/zzagw;)V

    return-void
.end method


# virtual methods
.method public final notify(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagt;->zzczb:Lcom/google/android/gms/internal/ads/zzagw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzagw;->zzcx(Ljava/lang/String;)Z

    return-void
.end method
