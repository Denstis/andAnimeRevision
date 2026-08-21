###### Class com.google.android.gms.internal.ads.zzahg (com.google.android.gms.internal.ads.zzahg)
.class final Lcom/google/android/gms/internal/ads/zzahg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzczl:Ljava/lang/String;

.field private final synthetic zzczm:Lcom/google/android/gms/internal/ads/zzahc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahc;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahg;->zzczm:Lcom/google/android/gms/internal/ads/zzahc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahg;->zzczl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->zzczm:Lcom/google/android/gms/internal/ads/zzahc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahc;->zza(Lcom/google/android/gms/internal/ads/zzahc;)Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahg;->zzczl:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbw;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
