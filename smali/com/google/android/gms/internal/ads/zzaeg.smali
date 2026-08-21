###### Class com.google.android.gms.internal.ads.zzaeg (com.google.android.gms.internal.ads.zzaeg)
.class final Lcom/google/android/gms/internal/ads/zzaeg;
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

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzaad()Lcom/google/android/gms/internal/ads/zzqr;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzaad()Lcom/google/android/gms/internal/ads/zzqr;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzqr;->zzmf()V

    :cond_f
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzl()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object p2

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    return-void

    :cond_19
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzm()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    return-void

    :cond_23
    const-string p1, "A GMSG tried to close something that wasn\'t an overlay."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void
.end method
