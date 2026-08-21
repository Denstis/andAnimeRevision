###### Class com.google.android.gms.internal.ads.zzael (com.google.android.gms.internal.ads.zzael)
.class final Lcom/google/android/gms/internal/ads/zzael;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaer<",
        "Lcom/google/android/gms/internal/ads/zzbbw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzaaa()Lcom/google/android/gms/internal/ads/zzaaw;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaaw;->zzqk()V

    :cond_b
    return-void
.end method
