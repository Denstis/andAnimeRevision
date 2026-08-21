###### Class com.google.android.gms.internal.ads.zzaja (com.google.android.gms.internal.ads.zzaja)
.class final Lcom/google/android/gms/internal/ads/zzaja;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxx;


# instance fields
.field private final synthetic zzcyd:Lcom/google/android/gms/internal/ads/zzaxv;

.field private final synthetic zzdbh:Lcom/google/android/gms/internal/ads/zzaia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaiy;Lcom/google/android/gms/internal/ads/zzaxv;Lcom/google/android/gms/internal/ads/zzaia;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzcyd:Lcom/google/android/gms/internal/ads/zzaxv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzdbh:Lcom/google/android/gms/internal/ads/zzaia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzcyd:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaim;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaim;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzdbh:Lcom/google/android/gms/internal/ads/zzaia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaia;->release()V

    return-void
.end method
