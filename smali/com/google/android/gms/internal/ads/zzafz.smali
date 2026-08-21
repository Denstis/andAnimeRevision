###### Class com.google.android.gms.internal.ads.zzafz (com.google.android.gms.internal.ads.zzafz)
.class public final Lcom/google/android/gms/internal/ads/zzafz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/initialization/AdapterStatus;


# instance fields
.field private final description:Ljava/lang/String;

.field private final zzcyp:I

.field private final zzcyr:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzcyr:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafz;->description:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzcyp:I

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafz;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getInitializationState()Lcom/google/android/gms/ads/initialization/AdapterStatus$State;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzcyr:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    return-object v0
.end method

.method public final getLatency()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafz;->zzcyp:I

    return v0
.end method
