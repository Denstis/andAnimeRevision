###### Class com.google.android.gms.internal.ads.zzads (com.google.android.gms.internal.ads.zzads)
.class final Lcom/google/android/gms/internal/ads/zzads;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcww:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private final synthetic zzcwx:Lcom/google/android/gms/internal/ads/zzvl;

.field private final synthetic zzcwy:Lcom/google/android/gms/internal/ads/zzadt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzadt;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;Lcom/google/android/gms/internal/ads/zzvl;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzads;->zzcwy:Lcom/google/android/gms/internal/ads/zzadt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzads;->zzcww:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzads;->zzcwx:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzads;->zzcww:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzads;->zzcwx:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zza(Lcom/google/android/gms/internal/ads/zzvl;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzads;->zzcwy:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzadt;->zza(Lcom/google/android/gms/internal/ads/zzadt;)Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzads;->zzcww:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;->onPublisherAdViewLoaded(Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)V

    return-void

    :cond_16
    const-string v0, "Could not bind."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void
.end method
