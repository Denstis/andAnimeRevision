###### Class com.google.android.gms.internal.ads.zzahi (com.google.android.gms.internal.ads.zzahi)
.class final Lcom/google/android/gms/internal/ads/zzahi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzczm:Lcom/google/android/gms/internal/ads/zzahc;

.field private final synthetic zzczo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahc;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahi;->zzczm:Lcom/google/android/gms/internal/ads/zzahc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahi;->zzczo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahi;->zzczm:Lcom/google/android/gms/internal/ads/zzahc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahc;->zza(Lcom/google/android/gms/internal/ads/zzahc;)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahi;->zzczo:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
