###### Class com.google.android.gms.internal.ads.zzxg (com.google.android.gms.internal.ads.zzxg)
.class final Lcom/google/android/gms/internal/ads/zzxg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/initialization/AdapterStatus;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzxc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    return-object v0
.end method

.method public final getInitializationState()Lcom/google/android/gms/ads/initialization/AdapterStatus$State;
    .registers 2

    sget-object v0, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    return-object v0
.end method

.method public final getLatency()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
