###### Class com.google.android.gms.internal.ads.zzafo (com.google.android.gms.internal.ads.zzafo)
.class final Lcom/google/android/gms/internal/ads/zzafo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final synthetic zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzafl;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafo;->zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafo;->zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
